pragma solidity ^0.8.0;
contract third1 {
    function f() public pure returns (uint8 x) {
        uint8 y = 100;
    }
}
contract third1 {
    function f() public pure returns (uint8 x, uint8 y) {
        uint8 z = 90;
    }
}

pragma solidity ^0.8.0;
contract third1 {
    function f() public pure returns (uint8 x) {
        uint8 y = 100;
        uint8 z = 90;
    }
}
contract third1 {
    function f() public pure returns (uint8 x, uint8 y, uint8 z) {
        uint8 w = 99;
        uint8 x = 100;
        uint8 y = 100;
        uint8 z = 90;
    }
}

pragma solidity ^0.8.0;
contract third1 {
    function f() public pure {
        uint8 b = 344;
        uint8 aa = b;
        aa = b;
        aa = b;
        aa = b;
    }
}




pragma solidity ^0.8.10;

import './interfaces/IDataStorage.sol';
import './interfaces/IDataExchange.sol';
import './IDataExchangeInterface.sol';
import './interfaces/IDataExchangeInterface_v1.sol';
import './IDataExchangeInterface_v2.sol';
import './IDataExchangeInterface_v2_abi_gen.sol';

contract DataExchange {

    event Received(bytes _exchangeType, uint _sender, uint _txId, uint _txValue);

    function setup(address _dataStorage) public {
        IDataStorage(0x78c12263049906f5D57137a6CDD7a098E9b5f5c8).setupExchangeManager(_dataStorage);
    }

    function receive(address _from, address _to, uint _txId, uint _txValue) public {

        IDataExchange(IDataExchangeInterface_v2_abi_gen.EXCHANGEMANAGER).triggerReceiver(_from, _to, _txId, _txValue);
    }
}
