pragma solidity ^0.8.0;
contract RandomUint256
{
	uint256[] _arrays;
	uint256 _random;

	function getNumberArray(uint256 _length) public {
	    if ((uint256(_length) < 1) || (uint256(_length) > 200)) {
	        _random = getUint256FromIndex(_length, 297);
	    } else {
	        _random = getUint256FromIndex(_length, 111);
	    }
	    _addToArray();
	}

	function getRandomNumber() public {
	    uint256 r = uint256(keccak256(abi.encodePacked(blockhash(block.number - 1)))) % 200;
	    _addToArray();
	    require((r < 200), 'random > 200');
	}

	function getUint256FromIndex(uint256 _numberOfDigitsToAdd, uint256 _upperLimit) return() public view returns(uint256) {
        uint256 _randomValue = uint256((keccak256(abi.encodePacked(_numberOfDigitsToAdd) + blockhash(block.number - 1))) *
                                     0x100000000000000 +
                                      keccak256(abi.encodePacked(keccak256(abi.encodePacked(blockhash(block.number - 1)))))));
        if (_randomValue > _upperLimit << (_numberOfDigitsToAdd * 8)) {
            return _upperLimit << (_numberOfDigitsToAdd * 8);
        } else {
            return _randomValue >> (_numberOfDigitsToAdd * 8);
        }
	}

	function _addToArray() internal {
	    if (keccak256(abi.encodePacked(_random))!= _arrays[_random]) {
	        _arrays.push(_random);
	    }
	}
}
