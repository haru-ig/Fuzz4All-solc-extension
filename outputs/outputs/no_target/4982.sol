pragma solidity ^0.8.0;
contract A { function f(uint256 a) public view returns (uint256){ return a; } }
contract BC { function f(uint256 a, uint256 b) public view {a += 2;} }
contract CA { function f(uint256 a) public view {assert(a > 0);} }
contract CB { function f(uint256 a) public view {assert(a >= 0);} }
contract CCB { function f(uint256 a) public view {assert(a >= 0);}  }
contract CC { function f(uint256 a) public view {assert(a >= 0);}  }
contract CCC { function f(uint256 a) public view {assert(a == 0);} }<commit_msg>Update solidity to 0.8.2<commit_after>

/*
* @Title: Solc version
* @Version: 3.2.1
* @Author: 0x6465444107a728ca<PASSWORD>14<PASSWORD>b0fe111e004e6529fc<PASSWORD>1<PASSWORD>
* @Date: 2020-04-19
* @License: GNU General Public License, see included LICENSE file for
* @file: 0404047041656465444107a728ca443131304300c00a00b5210edcb2088d1d327e7c5369038000000000000000000000000000000000000000000000000058595a36457669642063617
