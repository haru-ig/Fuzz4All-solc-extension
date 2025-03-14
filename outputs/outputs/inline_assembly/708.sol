pragma solidity ^0.8.0;
contract Mutator11 {
    function testMethod(uint a, bytes32 b) public  {
        bytes memory result = new bytes(5);
        int temp = 3 * uint(msg.data).toUInt256() - 1 * (10 ** int(msg.data));
        result[0] = bytes1('a')[_add(temp, 1)];
        result = _double(result);
        result = _triple(result);
        result = _triple(result);
        result = _double(result);
        result = _add(result, 25);
        result = _add(result, 125);
        assembly {
            sstore(0x47, add(result, 15))
        }

        require(a > 5 and a <= 25, "must be between 5 and 25");
    }

    function _double(bytes memory _data){
        bytes memory result = new bytes(2 * _data.length);
        assembly {
            let ptr := add(_data, 0)
            let src := ptr
            for {let i := 0} i < mul(sub(and(and(sub(result.length, 1)), 1), 64))}{i := add(i, 64)} {
                result[i] := mload(src)
            }
        }
        return result;
    }
    function _triple(bytes memory _data) private pure returns (bytes memory) {
        bytes memory result = new bytes(3 * _data.length);
        assembly {
            let ptr := add(_data, 0)
            let src := ptr
            for {let i := 0} i < mul(sub(and(and(sub(result.length, 1)), 32))}{i := add(i, 8)} {
                result[i] := mload(add(src, add(byte(i), 32)))
            }
        }
        return result;
    }

    function _add(bytes memory _dataOne, int num) private pure returns (bytes memory) {
        bytes memory result = new bytes(_dataOne.length);
        assembly {
            result := add(_dataOne, bswap(i256(num)))
        }
        return result;
    }

    function bswap(i256 x) private pure returns (i256 y){
        assembly {
            x := sub(x, div(2 ** mload(0x4a), 2 - byte(0)))
            y := sub(2 ** mload(0
