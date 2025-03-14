pragma solidity ^0.8.0;
contract B {
    function x() public pure returns(bytes memory) {
        bytes memory res = new bytes(1);
        res[0] = 'a';
        return res;
    }
    function z() public pure returns (uint256) {
        uint256 x = 1 / 0;
        uint256[] memory a =[1,2,3];
        uint256 y = x * 10;
        require( y > x, "error here" );
        return y;
    }
    function f() external returns(bytes memory) {
        uint256 x = 1 / 0;
        uint256[] memory a =[1,2,3];
        uint256 y = x * 10;
        require( y > x, "error here" );
        require( a[0] <= 7, "error here" );
        bytes memory res = new bytes(1);
        res[0] = 'a';
        return res;
    }
    function bar() public pure returns (uint256) {
        uint256 x = 1 / 0;
        uint256[] memory a =[1,2,3];
        uint256 y = x * 10;
        require( y > x, "error here" );
        require( a[0] <= 7, "error here" );
        (uint256[] memory a, bool bl) = (a, true);
        return y;
    }

    uint x = 1 / 0;
    function zer() public {
        require(x == 0, "error here");
        uint256 x=10;
        uint y = 1 / 0;
        uint256[] memory ba = [1,2,3];
        uint256 z = [1,3,5][1];
        require(y + x==z + ba.length, "error here");
        if (x < z) {
            (bool b, uint x)=(b, x);
        }

        require(x==1, "error here");
        address a = msg.sender;
        uint s = a.send(1);
    }
}
