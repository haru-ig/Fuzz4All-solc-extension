pragma solidity ^0.8.0;
contract S9 {
    uint public f1;

    constructor(uint i) public{
        if (i > 0) f1 = i/2;
        else         f1 = 1/2;
    }
}

pragma solidity ^0.8.0;
contract S24 {
    function main() public {
        uint[] arr = [.1,.2,.3,.4,.5];
        uint[] storage newArr = new uint[](arr.length+1);
        newArr[0] = f();
        for (uint i = 1; i < newArr.length; i ++)
            newArr[i] = f() + f();
        for (uint i = 0; i < arr.length; i ++)
            arr[i] *= newArr[1 + f()];
        arr[0] = g();
        assert (arr.length == 5);
        for (uint i = 1; i < arr.length; i ++)
            arr[i] *= f();
        assert (arr[0] == (arr.length + 1/2));
    }

    function g() public pure returns(uint) {
        return 3;
    }

    function f() public view returns (uint) {
        uint x = 4;
        return (x*x + 1)/2 + 2;
    }
}
