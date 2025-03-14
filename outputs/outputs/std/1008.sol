pragma solidity ^0.8.0;
contract ArrayMut3
{
	function min_v_max3() public pure returns(uint256 _a, uint256 _b){
		uint256 _a2 = 5;
		uint256 _b2 = 3;
		uint256 _c=_a2;_a = _a2;_b = _c;
		_a = _a2+_b2;
		_b = _b2+_a2;_b = _a+_b;
		_a = _b-_a;_b = _a-_b;
		_b = _c-1-_a;
	}
	function f_25253() public pure returns(uint256 _a){
		uint256 _a2 = _b-1-_a;
		return _a2;
	}
}

pragma solidity ^0.8.0;
contract A1
{
    address payable A;
    function f_A1(address payable a) external {
        A = a;
    }
    function f_A() public pure {
        require( A == msg.sender );
    }
}
contract B1 {
    A1.f_A1 A;
    function f_B() public pure {
        A.f_A();
    }
}
contract C1 {
    B1.f_B B;
    function f_C() public pure {
        B.f_B();
    }
}
contract A2
{
    address payable A;
    function f_A2() external payable {
        A = address( uint160(uint256(now) - uint256(10 ether)) );
    }
    function f_A() public pure {
        require( A == msg.sender );
    }
}
contract B2 {
    A2.f_A2 A;
    function f_B() public pure {
        A.f_A();
    }
}
contract C2 {
    B2.f_B B;
    function f_C() public pure {
        B.f_B();
    }
}
contract ArrayMut_cI {
    function f_2525_arrayMut_cI() public pure {
        uint256[2
