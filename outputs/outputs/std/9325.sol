pragma solidity ^0.8.0;
interface Multi
{
    function f1() external view returns (uint256);
    function f2() external returns (uint256);
    function f3() external view returns (uint256);
    function f4(uint x) external view returns (uint256);
    function f5(uint x) external returns (uint256);
    function f6() external returns (uint256);
    function f7() returns (uint256);
    function f8(uint x) returns (uint256);
    function f9(uint x) returns (uint256);
    function f10(uint x) external returns (uint256);
    function f11(uint x) external returns (uint256);
}
contract Test
{

    Multi multi;

    function setMulti(Multi _multi)
        public
        {
        require(msg.sender == address(_multi));
        multi = _multi;
        }

    function f1()
        public
        view
        returns (uint256)
        {
        return multi.f1();
        }

    function f2()
        public
        returns (uint256)
        {
        return multi.f2();
        }

    function f3()
        public
        view
        returns (uint256)
        {
        return multi.f3();
        }

    function f4(uint x)
        public
        view
        returns (uint256)
        {
        return multi.f4(x);
        }

    function f5(uint x)
        public
        returns (uint256)
        {
        return multi.f5(x);
        }

    function f6()
        public
        returns (uint256)
        {
        return multi.f6();
        }

    function f7() public returns (uint256) { return multi.f7(); }

    function f8(uint x)
        public
        returns (uint256)
        {
        return multi.f8(x);
        }

    function f9(uint x)
        public
        returns (uint256)
        {
        return multi.f9(x);
        }

    function f10(uint x)
        public
        returns (uint256)
        {
        return multi.f10(x);
        }

    function f11(uint x)
        public
        returns (uint256)
        {
        return multi.f11(x);
        }
}
