pragma solidity ^0.8.0;
contract Success1 {
    function noChange() public pure {
        require(true, "Success");
        require(true, "Success2");
        require(true, "Success3");
        require(true, "Success4");

        assert(true);
        assert(true);
    }
}
