pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint counter) internal view returns (bool){
        counter++;
        return false;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Receives {
    function _fallback(address, bytes memory){

    }
    receive() payable {}
}
