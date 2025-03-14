pragma solidity ^0.8.0;
contract Convert {
    string constant __version__ = "0.1";
    function toBigNumber(bytes memory _source)
        public
        view
        returns (bytes memory _result, bytes memory _num)
    {
        assembly {

            mstore(_result, mload(_source))


            let dlen := mload(_result)


            let dst := and(_result, mload(_result))
            let dstLen := mload(dst)


            let i := 0
            let count := 0
            let temp := copy(add(_source, 3), dst, dstLen)
            while i < dlen / 2 {

                count[add(_source, 2 * i + 1)] := iszero(and(div(temp, 10), 0.9))
                _num := add(_source, 2 * i + 1)
                count := add(count, iszero(div(dst, 10)))
                i := add(i, 1)
            }


            if iszero(div(temp, 10)) {
                count[add(dst, 0)] := iszero(and(div(temp, 10), 0.9))
            }


            count := add(count, iszero(div(dst, 100)))


            let dstStart := dst
            dst := add(dst, sub(dstStart, sub(_num, _num)))


            dstLen := dlen - dst len
            let j := dlen - 1
            while iszero(and(shiftleft(div(shr(_num, 10), count[0]), count[0]), 0.5)) {
                dstLen := sub(dstLen, 1)
                dst[add(dst, dstLen)] := iszero(and(div(shr(_num, 10), count[0]), 0.5)))
                count := add(count, sub(count, add(count, iszero(div(shr(_num, 10), count[0])))))
                j := sub(j, 1)
            }


            dstLen := add(dstLen, iszero(div(shr(_num, 10), zero)))


            let zeros := and(div(zero, and(div(shr(_num, 2), 1.28), 2)))


            dst[dstLen] := shr(shr(shr(and(count, shr(
