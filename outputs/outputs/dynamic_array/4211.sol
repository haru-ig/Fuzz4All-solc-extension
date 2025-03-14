pragma solidity ^0.8.0;
contract G {
    uint256[3] x;
    constructor(uint256[3] memory input, uint arg) public {
         uint256[3] memory prev = x;
         x[0] = prev[0];
         x[1] = prev[1];
         x[2] = prev[2];
         prev[2] = arg == 0? 1 : prev[1];
         prev[1] = prev[1] == 0? prev[2] : 0;
         uint256[3] storage storageFrom;
         assembly {
            storageFrom := mload(arg)
        }
        prev[0] = 2;
        prev[2] = 0;
    }

    function mutate(uint arg) public {
        uint32[0] memory output;
          uint8 outputStorage;
          uint32[4] memory outputStorage4;
          uint256 i;
          uint256 j;
          uint256 k;
            outputStorage4 = arg;
         x = [1, 2, 3] ;
         outputStorage = 1;
         uint256 storageSize;
         assembly {
              storageSize := msize()
         }
          storageFrom := arg;
            for ( k = storageSize; k > 0; k--) {
            outputStorage = mload(storageFrom);
            i = arg;
            mstore(storageFrom, outputStorage);
            j = arg+1;
            outputStorage &= prev[1];
            mstore(j, outputStorage);
            prev = prev == 0? prev : 0;
            i = i * 2;
            outputStorage = i;
            uint256[3] storage prevFrom;
 storageFrom := i;
            for (; i < k; i++) {
                prevFrom = prev;
                mstore(i, prevFrom);
                prevFrom = mload(i);
                prevFrom = prev == prevFrom[1]? prev : 0;
                mstore(i, prevFrom);
            }
        }

        }
}
