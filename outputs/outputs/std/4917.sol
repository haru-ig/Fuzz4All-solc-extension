pragma solidity ^0.8.0;
contract MutateWithStorageAccess1 {
    uint16[2] internal unboundedArray;
}

pragma solidity ^0.8.0;
contract MutateWithStorageAccess2 {
    uint16[2] internal boundsArray;
}
