pragma solidity ^0.8.0;
contract SentryMutateCallerFallback {
    function Mover() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        _mmove(0xb41ad897723e75ba248f65129848600b9a81ea4b);
    }
}
pragma solidity ^0.8.0;
contract SentryMutateCallerFallback2 {
    function Mover2() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        _mmove(1186466877913222153184*(-1));
    }
}
pragma solidity ^0.8.0;
contract SentryMutateCallerFallback3 {
    function Mover3() public {
        _mutateCaller();
    }
    function _mutateCaller() internal returns (bool) {
        _mmove(0xD434303FF7E23CFCF49E92D466C27E6918B914C1);
    }
}
