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

// NEEDS TESTING
void ICFGTraversal::collectICFGPath(std::vector<unsigned> &path){
  // Initialise string
  string pathStr = "Start: ";

  for (int i = 0; i < path.size(); i++) {
    pathStr.append(to_string(path[i]));
    pathStr.append("->");
  }

  // print path
  pathStr.append("END");
  cout << pathStr << "\n";

  // Add string to paths 
  paths.insert(pathStr);
}

/// TODO: Implement your context-sensitive ICFG traversal here to traverse each program path (once for any loop) from src to dst
void ICFGTraversal::reachability(const ICFGNode *src, const ICFGNode *dst)
{
  

}

// int testPrint() {
//       // Test case 1: Empty path
//     vector<unsigned> path1 = {};
//     collectICFGPathTest(path1);
//     // Expected output: "Start: END"

//     // Test case 2: Single node path
//     vector<unsigned> path2 = {1};
//     collectICFGPathTest(path2);
//     // Expected output: "Start: 1->END"

//       // Test case 3: Multiple node path
//     vector<unsigned> path3 = {1, 2, 3, 4};
//     collectICFGPathTest(path3);
//     // Expected output: "Start: 1->2->3->4->END"
// }

int main() {
    cout << "TESTING MAIN!\n";


  return 0;
}