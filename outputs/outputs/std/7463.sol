pragma solidity ^0.8.0;
contract Mutate5 {
    function mutateFromFirst(uint256[] memory array) public view returns (uint256) { return 0; }
    function mutateFromSecond(uint256[] memory array) public view returns (uint256) { return 1; }
}
contract Mutate6 {
    function mutateFromFirst(uint256[2][3] memory array) public view returns (uint256) {return 0;}
    function mutateFromFirst(uint256[][2] memory array) public view returns (uint256) {return 1;}
    function mutateFromSecond(uint256[2][3] memory array) public view returns (uint256) {return 0;}
    function mutateFromSecond(uint256[][2] memory array) public view returns (uint256) {return 1;}
}
contract Mutate8 {
    function mutateFromFirst(uint256[10][10] memory array) public view returns (uint256) {return 0;}
    function mutateFromSecond(uint256[10][10] memory array) public view returns (uint256) {return 1;}
}
contract Mutate9 {
    function mutateFromFirst(uint256[2][10] memory array) public view returns (uint256) { return 0; }
    function mutateFromSecond(uint256[2][10] memory array) public view returns (uint256) { return 1; }
}
contract Mutate10 {
    function mutateFromFirst(uint256[10][10] memory array) public view returns (uint256) { return 0; }
    function mutateFromSecond(uint256[10][10] memory array) public view returns (uint256) { return 1; }
}
contract Mutate11 {
    function mutateFromFirst(uint256[2][20] memory array) public view returns (uint256) { return 0; }
    function mutateFromSecond(uint256[2][20] memory array) public view returns (uint256) { return 1; }
}
contract Mutate13 {
    address _owner;

    constructor() {
        _owner = msg.sender;
    }

    modifier onlyOwner() {
    require(msg.sender == owner(),);
    _;
  }

    bool public locked;

    function lock() public onlyOwner returns (bool) {
        locked = true;
        return true;
    }

    function unlock() public onlyOwner returns (bool) {
        locked = false;
        return true;
    }

}
