pragma solidity ^0.8.0;
library Test72
{
    bytes32 private constant ENSURE_ARRAY_LEN_EQUAL = keccak256(abi.encodePacked("static array is equal to:", address(this).balance));
    bytes32 private constant ENSURE_ARRAY_LEN_DIFFERENT = keccak256(abi.encodePacked("static array does not have length equal to:", address(this).balance));

    struct DArray
    {
        uint[] d;
        uint len;

        constructor(uint l, uint i = 0) public
        {
            if (l!= 0)
            {
                require(i == 0, "static array is equal to: ");
                require(l == d.length, "static array does not have length equal to: ");
                d = new uint[](l);
            }
            else if (i!= 0)
            {
                require(i == 1, "static array is not equal to: ");
                require(a.length!= 0, "static array is empty");
                d = new uint[](a.length);
            }
            else d = new uint[](0);
        }

        modifier ensureArrayLengthEqual(uint l)
        {
            if (l!= d.length) revert ENSURE_ARRAY_LEN_DIFFERENT;
            _;
        }

        function append(uint e) public ensureArrayLengthEqual(d.length + 1)
        {
            d[d.length] = e;
        }

        function pop() public ensureArrayLengthEqual(uint x)
        {
            require(x <= d.length, "at index out of range");
            uint e = d[x];
            uint j;
            for (j = x; j < d.length - 1; j++)
            {
                d[j] = d[j+1];
            }
            d.length -= 1;
            return e;
        }
    }

    uint[] public static array;

    modifier ensureArrayLengthEqual(uint x)
    {
        if (x!= array.length) revert ENSURE_ARRAY_LEN_DIFFERENT;
        _;
    }

    function f() public
    {
        array = new uint[](5);
        array.append(0);
        array.append(1);
        array.append(2);
        array.append(3);
        array.append(5);
    }

}

pragma solidity ^0.8.0;
contract Test72 {
    uint[] public a;
    function f() public {
        a = new uint[](500);
        for(uint i
