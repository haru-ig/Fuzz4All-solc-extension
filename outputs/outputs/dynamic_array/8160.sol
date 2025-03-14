pragma solidity ^0.8.0;
contract MutatedFabric {
    MutatedFabric public z;
}
# This will create a compile-time error when the deployment of the above contract is attempted
pragma solidity >0.6.0 <0.8.0;
contract MutatedFabric {}
