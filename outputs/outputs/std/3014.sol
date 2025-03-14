pragma solidity ^0.8.0;
contract ArrayMutationsMutatorOld {
   function ArrayMutationsMutatorOld(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
   }
}

pragma solidity ^0.8.0;
contract ArrayMutationsSolver {
   constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        uint number5 = _numbers[5];
        delete _numbers[5];
        uint deletedNumber = _numbers[5];
        uint number3 = _numbers[3];
        delete _numbers[3];
        uint deletedNumber = _numbers[3];
        uint number8 = _numbers[8];
        delete _numbers[8];
        uint deletedNumber = _numbers[8];
   }
   function solve() public pure {
       uint min = 42;
       uint max = 20;
       uint max42 = max - min + 1;
       uint count = 9;
        for ( uint i = 0; i < count; i++) {
            uint number54 = 1 + (5 * i);
            bool b = number54 < number3 || number54 > max42;
            if ( b ) {
                uint tmp42 = min + number54;
                min = max;
                max = tmp42;
            }
            b = bool(min < max);
            require(b);
         }
   }
}
