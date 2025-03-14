pragma solidity ^0.8.0;
contract Test1805 {
    uint16[] a = [1,2];
    function setX1() public { a = [1,2,3]; }
    function getX1() public view returns (uint16) {return a.length;}
    function setX2() public { a.push(1); a.push(2); }
    function getX2() public view returns (uint16) {return a.length;}
    function setX3() public { a.pop(); a.pop(); }
    function getX3() public view returns (uint16) {return a.length;}
    function setX4() public { a.insert(0,0); a.insert(2,1); }
    function getX4() public view returns (uint16) {return a.length;}
    function setX5() public { a.push(1); a.push(2); }
    function getX5() public view returns (uint16) {return a.length;}
    function setX6() public { a.push(3); a.push(1); }
    function getX6() public view returns (uint16) {return a.length;}
    function setX7() public { a.push(3); a.push(1); }
    function getX7() public view returns (uint16) {return a.length;}
    function setX8() public { a.push(3); a.pop(); a.pop(); }
    function getX8() public view returns (uint16) {return a.length;}
}
