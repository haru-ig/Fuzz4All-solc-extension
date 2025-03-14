pragma solidity ^0.8.0;
contract MutateSemantic7Caller3 {
    function modifyL4Fallback1(address x) pure public returns (uint){
        return 0x0;
    }
    function modifyL4Fallback2(uint x) pure public returns (uint){
        return 0x0;
    }
}
pragma solidity ^0.8.0;
import "./MutateSemantic7Caller.sol";
contract MutateSemantic7Caller2 is MutateSemantic7Caller4 {
    function mutatingCall(address calldata x) public {
        MutateSemantic7Caller mutate = MutateSemantic7Caller(x);
        mutate.modifyB7Mutate.value(40)();
        mutate.modifyB8Mutate.value(70)();
    }
}
pragma solidity ^0.8.0;
contract Caller {
    function call(address x) public {
        (uint dummy, ) = x.call{value: 40}("");
    }
}
pragma solidity ^0.8.0;
contract MutateSemantic7Caller {
    function mutatingCall(address x) public {
        (uint dummy, ) = x.call(abi.encodeWithSignature("modifyB7Mutate(uint256, uint256)", 42, 8));
        (uint dummy, ) = x.call(abi.encodeWithSignature("modifyB8Mutate(uint256, uint256)", 43, 8));
    }
}
