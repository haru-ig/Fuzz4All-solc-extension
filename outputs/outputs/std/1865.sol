pragma solidity ^0.8.0;
import "./Array.sol";
import "./Convert.sol";
interface MutateInterface {
    function add(uint256 x, uint256 y) external;
}
interface EnumerableInterface {
    function elements(uint256 start, uint256 length) external view returns (uint256[] memory);
}
interface MutatorInterface {
    function modify(uint256 startingIndex, uint256 elementIndex, uint256 elemValue) external;
}
contract EfficientArray {
    uint256 constant MAX_ARRAY_ELEMENT_LIMIT = 1000;
    uint256 public arrayLength;
    address public contractAddress;
    address public owner;
    uint256 public elemAddressSize;
    bytes32 public mutationRate = keccak256("EfficientArrayMutation");
    uint256 public minElemVal;
    uint256 public maxElemVal;



    modifier canDoMutations() {

        if (_mutationsLeft() >= maximumMutationsRemaining()) _;
        _
    }

    modifier checkIsAddress(address a) {
        if (a == contractAddress) _;
        _
    }

    modifier onlyOwner {
        if (msg.sender!= owner) _;
        _
    }

    modifier checkMinimumElemValues() {
        if (minElemVal > EfficientArray.maxElemVal) revert("Error: Element values must be smaller than maximum element values");
        _
    }

    modifier checkMaximumElemValues() {
        if (EfficientArray.maxElemVal < minElemVal) revert("Error: Element values must be greater than minimum element values");
        _
    }

    modifier checkNumberRange(uint256 minimumElemVal, uint256 maximumElemVal) {
        require(minimumElemVal <= maximumElemVal, "Error: EfficientArray element range is limited between minimum and maximum values");
        _
    }

    modifier checkMutationRateValid() {
        if (!isValidMutationRate()) revert("Error: Invalid mutation rate");
        _
    }

    function initialize(address _owner, address _contractAddress) public checkMinimumElemValues onlyOwner {
        minElemVal = 0;
        maxElemVal = 1;
        arrayLength = 0;
        owner = _owner;
        contractAddress = _contractAddress;
        elemAddressSize = convertByteToInt(abi.encodePacked(1));
        arrayLength = 0;
        minElemVal = 0;
        maxElemVal = 1;
    }

    function minimumValue() public view returns (uint256) {
        return minElem
