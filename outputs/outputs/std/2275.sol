pragma solidity ^0.8.0;
interface IHasOwner {
    function owner() external view returns (address);
}
pragma solidity ^0.8.0;
contract BaseHolder is IHasOwner {
    constructor() {}
    function owner() public view virtual override {
        return msg.sender;
    }
}
pragma solidity ^0.8.0;
contract BaseCandyStorage {
    constructor() {
        BaseHolder.owner();
    }

    function candyTransferred(uint256 _tokenId, address _from, address _to) public virtual;
}
pragma solidity ^0.8.0;
import "./BaseCandyStorage.sol";
import "./ISaveable.sol";
import "./BaseHolder.sol";
contract CandyStorage is BaseCandyStorage, Serializable, ISaveable {
    constructor() public {
        BaseHolder.owner;
    }
    function exists(uint256 _tokenId) public view returns (bool) {
        return has(baseAddress, _tokenId);
    }
    function get(uint256 _tokenId) public view returns (ISaveable) {
        uint256 length = getLength(baseAddress, _tokenId);
        uint256 endIndex = 2*length + 1;
        string memory nameBytes = byteToString(baseAddress, _tokenId, endIndex);
        string memory symbolBytes = byteToString(baseAddress, _tokenId + length, endIndex);
        address cautionaryBase = (0xb476bc3d7e6512be6c71fd9a6885de8a77c6ae1c).delegatecall(abi.encodeWithSelector(ISaveable.canFetch.selector, length, 0));
        uint256 _length = uint256(bytesLength(cautionaryBase));
        (IHasOwner hasOwner, ) = ISaveable(cautionaryBase).fetch(0, length);
        uint256 ownerId;
        if (hasOwner.owner() == msg.sender) {
            ownerId = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99;
        } else {
            ownerId = address(hasOwner).delegatecall(abi.encodeWithSelector(IHasOwner.owner.selector));
        }
        (IHasOwner hasMetadata, ) = ISaveable(cautionaryBase).fetch(bytesLength(nameBytes) + 1, _length - bytesLength(nameBytes));
        uint256 storedLength = byteToUint032(hasMetadata.owner());
        if (storedLength == 0 | storedLength > endIndex) {
            if (storedLength < endIndex) {
                return IHasOwner(cautionaryBase).owner();
            }
            return IHasOwner(cautionaryBase).owner();
