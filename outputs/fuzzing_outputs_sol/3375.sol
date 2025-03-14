pragma solidity ^0.8.0;
contract S {
    function mod() public pure {
        return 99;
    }
}
contract Caller {
    function test() public {
        S s;
        address x = address(s);

        S storage s1 = s;
        S storage s2 = s1;
        S storage s3 = s2;
        S storage s4 = S(address(s1));

        address x1 = address(s1);
        address x2 = address(s2);
        address x3 = address(s3);
        address x4 = address(s4);

        assert(x.callBack() == 0);
        assert(x1.callBack() == 0);
        assert(x2.callBack() == 0);
        assert(x3.callBack() == 0);
        assert(x4.callBack() == 0);
        s.callBack();
    }
}
