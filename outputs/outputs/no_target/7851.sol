pragma solidity ^0.8.0;
contract TestMutator2 {
    function set(uint40 x) public {
        set(x);
        get1(x);
    }
    function get0() public pure returns(uint40) {
        uint40 val = get1(1);
        return val;
    }
    function get1(uint40 x) public pure returns(uint40) {
        uint40 val = 2;
        return val;
    }
}
 contract TestMutator3 {


    function set(uint40 x) public {
        set(uint0(x));
        get1(uint0(x));
        get2(uint0(2));
    }
    function get0() public pure returns(uint40) {
        uint40 val = get1(uint0(1));
        return val;
    }
    function get1(uint40 x) public pure returns(uint40) {
        if (x > 0)
            return x;
        revert("must > 0.");
    }
    function get2(uint40 x) public pure returns(uint40) {
        if (x < -1)
            return x;
        revert("must < -1.");
    }
}
