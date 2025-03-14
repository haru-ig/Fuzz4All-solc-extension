pragma solidity ^0.8.0;
contract MutateMain {
    Main public main;
    constructor () { main = Main(0x591739d6f2486e21e999678a61c8f7c76710e8c5); }
    function setMainRef (address ref) internal { main = Main(ref); }
}

pragma solidity ^0.8.0;
contract MutateMain {
    Main public main;
    constructor () { main = Main(0x591739d6f2486e21e999678a61c8f7c76710e8c5); }
    function mutateReferencesAll () internal {
        setMainRef(0xD97F57D8F00416845C847b0e0b6383e2c34bEF8f);
    }
}
