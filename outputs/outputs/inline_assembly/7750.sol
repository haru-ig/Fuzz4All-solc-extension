pragma solidity ^0.8.0;
contract L9 {
    uint256 public x;
    function setx() public public {
        x =  0xcafebabe;
    }
    function testx() public public returns (uint256) {
        setx();
        return x;
    }
        function sub2() public {
       uint256 x;
       setx();

    }
}
