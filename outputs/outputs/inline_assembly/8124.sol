pragma solidity ^0.8.0;
contract Mutated3 {
    uint256 private totalPrice;
    uint256 private numDRinks;
    uint256 private timeLimit;
    bytes32 public slip39_secret;
    constructor (uint256 price, uint256 time, bytes32 secret) public {
        totalPrice = price;
        numDRinks = 0;
        timeLimit = time;
        slip39_secret = secret;
    }
    function addDrink() public {
        bytes32 _secret = _secret();
        bytes32 _seed = keccak256(abi.encodePacked(now, block.timestamp, slip39_secret));
        bytes32 r = keccak256(abi.encodePacked(address(this), "addDrink", _secret));
        bytes32 q = keccak256(abi.encodePacked(address(this), "addDrink", _seed));
        bytes32 hash = keccak256("\x19Ethereum Signed Message:\n32");
        bytes32 t = keccak256("Finishing drinks\n");
        bytes32 sig = ecrecover(hash, r, q);
        require(tx.origin == sig);
        _secret = (sig!= bytes32(0));
        numDRinks++;
        totalPrice += 1 * 10 ** 18;
        numDRinks += 0;
    }
    function _secret() internal pure returns(bytes32) {
        return keccak256(abi.encodePacked(timeLimit));
    }
    function finalize() public {
        totalPrice += totalPrice;
        numDRinks--;
    }
}
