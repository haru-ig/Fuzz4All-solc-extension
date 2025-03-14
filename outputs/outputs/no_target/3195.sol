pragma solidity ^0.8.0;
contract four {
    function __func__() public pure {

        assert(get_result() < 0);
    }
    function get_result() public pure returns (uint32) {

        return 1;
    }
}
contract test_sol7 {
    function test_sol7() public {
        seven seven1 = new seven();
        seven1.__func();
        four four1 = new four();
        four1.__func();
    }
}
