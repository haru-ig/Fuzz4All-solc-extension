pragma solidity ^0.8.0;
interface IDummy {
    function dummyFunction() external;
}
contract Dummy implements IDummy {
    function dummyFunction() public {}
}

pragma solidity ^0.8.0;
contract CallStack {
    mapping (address => bool) public blacklistedAddresses;
    function safeCall(address target) public view {
        if (address(this).isContract()) {
            require(!blacklistedAddresses[target], "Address already blacklisted");
            blacklistedAddresses[target] = true;
            target.call(bytes(keccak256(abi.encodePacked(keccak256(abi.encode(target, this)))))));
            blacklistedAddresses[target] = false;
        }
    }
    function isContract() public view returns(bool){
        uint size;
        assembly {
            size := extcodesize(target)
        }
        return (size>0 && size < 50);
    }
}
