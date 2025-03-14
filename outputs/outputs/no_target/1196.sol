pragma solidity ^0.8.0;
contract SemanticInjection3
{
     function semanticInjection1(uint256 a, uint256 b, uint256 c,
     uint256 d) public pure {
    	a = b;
    	b = c;
    	c = d;
    	b = b;
    	c = d;
    	b = a;
    	c = a;
    	b = c;
    	c = c;
    }
}


contract TestFail
    {
public function TestFail() public
        {
            if (false)
            {

                assert(false);
            }
        }
    }


contract ArithmeticSemantics
    {
    function add_underfow(uint256 a, uint256 b) public pure
        {
            uint256 c = a + b;
            assert(c > a);
        }

    function add_overflow(uint256 a, uint256 b) public pure
        {
            uint256 c = a + b;
            assert(c <= a);
        }

    function sub_underfow(uint256 a, uint256 b) public pure
        {
            uint256 c = a - b;
            assert(c < b);
        }

    function sub_overflow(uint256 a, uint256 b) public pure
        {
            uint256 c = a - b;
            assert(c >= b);
        }

    function mul_underfow(uint256 a, uint256 b) public pure
        {
            uint256 c = a * b;
            assert(c / b == ((uint256)a) / b);
        }

    function mul_overflow(uint256 a, uint256 b) public pure
