pragma solidity ^0.8.0;

contract Complex {
    function doSomething() public {
        uint x = 1;
        uint y = 2;
        uint x2 = uint(uint(x) + uint(x) + uint(x) + uint(x) + uint(x) + uint(x));
        uint c = x2 <= x? 1 : 0;
        uint x3 = uint(uint(x) - uint(y) + uint(x) + uint(x));
        bytes memory _a;
        _a.fill(0x7f, false);
        _a[uint(uint(x2) + uint(x3)) / 4761] = byte(0);
        require(_a.length == 22213, "Test");
        uint z = uint(uint(x) - uint(x) + uint(x) + uint(y));
        require(x * z == 1, "Test");
    }
}
contract Owned {
    address public owner;
    modifier onlyOwner() {
        owner.require(msg.sender == owner, "Only owner can execute this action");
        _;
    }

    function require(bool ok, string memory errorMessage) internal view
    {
        if (!ok) {



            string memory prefix = "ERR: ";
            if (bytes(errorMessage).length > 0) {
                prefix += errorMessage + ": ";
            }
            assembly {
                let result := mload(0x40)
                mstore(0x40, add(result, 32))


                mstore(result, add(0x0, mload(result)))

                mstore(add(result, 32), prefix)

                mstore(add(result, 64), mload(0x40))

                mstore(add(result, 96), mload(0x0))

                mstore(add(result, 128), mload(sub(0x40, 312)))


                mstore(add(result, 160), mload(add(result, 160)))
