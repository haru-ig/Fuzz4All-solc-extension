pragma solidity ^0.8.0;
contract Caller {
    fallback() public {

        uint x = myStorage();
        assert(x > 0);
    }
    function myStorage() public view returns (uint) {
        return 0;
    }
}
