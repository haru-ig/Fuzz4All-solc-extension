pragma solidity ^0.8.0;
contract Convert
{
    function testConverter(address _from, address _to) public returns (uint)
    {
        bytes memory data =abi.encodeWithSignature("convert()", _from, "123456723456723");
        return address(abi.decode(data, (uint)));
    }
}

pragma solidity ^0.8.0;
contract Math
{

    function addition(uint _a, uint _b) public view returns(uint)
    {
        return (_a + _b);
    }

    function max(uint _a, uint _b) public view returns(uint)
    {
        if (_a > _b){
            return _a;
        } else {
            return _b;
        }
    }

    function min(uint _a, uint _b) public view returns(uint)
    {
        if (_a < _b){
            return _a;
        } else {
            return _b;
        }
    }

    function getSum(uint[] memory) public view returns(uint)
    {
    }
}

pragma solidity ^0.8.0;
contract A
{
    uint x;

    function test(uint val) internal
    {
        x = val;
    }

    function add() internal
    {
        test(5);
    }

    function max() public view returns (uint){
        uint y;
        test(5);
        y=5;
        test(5);
        return y;
    }

	function set() public view returns (uint){
		test(5);
		return x;
	}

	function setWithReturn(uint val) public view returns (uint){
		test(5);
		return val;
	}


    function mul() public view returns(uint){
        uint z;
        test(5);
        z=5;
        test(5);
        return z;
    }

    function division() public view returns (uint){
        uint w;
        test(5);
        w=5;
        test(5);
        return w;
    }
}
