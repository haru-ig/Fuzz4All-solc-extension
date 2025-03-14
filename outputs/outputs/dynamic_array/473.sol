pragma solidity ^0.8.0;
contract test10
{
    address x;
    bytes[4] myArray;
}

pragma solidity ^0.8.0;
interface A
{
    bytes4 externalFunc();
}

contract test11 is A
{
    bytes3 foo = "hi";

    function setBytes() public
    {
        bytes memory _bytes = (foo);
        bytes memory _other = "This also fails.";
    }

    function setBytes4() public {
        bytes4 _bytes4 = foo;
        bytes4 _other = bytes4(keccak256(abi.encodePacked(foo)));
    }

    function bytes4(bytes memory b) private pure returns (bytes4) {
        return bytes4(bytes(b));
    }
}
