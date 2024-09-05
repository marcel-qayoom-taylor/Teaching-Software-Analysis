//===- Software-Analysis-Teaching Assignment 2-------------------------------------//
//
//     SVF: Static Value-Flow Analysis Framework for Source Code
//
// Copyright (C) <2013->
//

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//===-----------------------------------------------------------------------===//
/*
 // Software-Analysis-Teaching Assignment 2 : Source Sink ICFG DFS Traversal
 //
 // 
 */

#include <set>
#include "Assignment-2.h"
#include <iostream>
using namespace SVF;
using namespace std;

/// TODO: print each path once this method is called, and
/// add each path as a string into std::set<std::string> paths
/// Print the path in the format "START->1->2->4->5->END", where -> indicate an ICFGEdge connects two ICFGNode IDs

void ICFGTraversal::collectICFGPath(std::vector<unsigned> &path){
  // Initialise string
  string pathStr = "Start: ";

  // Iterate through path vector and build the path string
  for (int i = 0; i < path.size(); i++) {
    pathStr.append(to_string(path[i]));
    pathStr.append("->");
  }

  // Complete string and print it
  pathStr.append("END");
  cout << pathStr << "\n";

  // Add string to paths 
  paths.insert(pathStr);
}

/// TODO: Implement your context-sensitive ICFG traversal here to traverse each program path (once for any loop) from src to dst
void ICFGTraversal::reachability(const ICFGNode *src, const ICFGNode *dst){
  pair<const ICFGNode*, CallStack> pair = make_pair(src, callstack);

  // If the src node has already been visited
  if (visited.find(pair) != visited.end()) {
    return;
  }

  visited.insert(pair);
  
  path.push_back(src->getId());

  // We've reached the sink and therefore end of one path
  if (src == dst) {
    collectICFGPath(path);
  }

  // Iterate through all outgoing edges of the current node
  for (const ICFGEdge * edge : src->getOutEdges()) {
    if (edge->isIntraCFGEdge()) {
      // For intra-procedural edges, continue
      reachability(edge->getDstNode(), dst);
    }
    else if (edge->isCallCFGEdge()) {
      // For call edge push the call node onto stack before traversing
      callstack.push_back(edge->getSrcNode());
      reachability(edge->getDstNode(), dst);
      callstack.pop_back();
    }
    else if (const SVF::RetICFGNode* retNode = SVFUtil::dyn_cast<SVF::RetICFGNode>(edge->getDstNode())) {
      // If the return node matches the top of the call stack then remove it and continue
      if (!callstack.empty() && callstack.back() == retNode->getCallICFGNode()) {
        callstack.pop_back();
        reachability(edge->getDstNode(), dst);
        callstack.push_back(retNode->getCallICFGNode());
      } else if (callstack.empty()) {
        // If the call stack is empty then treat it as a normal edge
        reachability(edge->getDstNode(), dst);
      }
    }
  }

  visited.erase(pair);

  path.pop_back();
}
