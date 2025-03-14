pragma solidity ^0.8.0;
interface IToken { function testContract() external constant; }
contract Contract  {
    function useContract() public pure {
        IToken token = IToken(msg.sender);
        token.testContract();
    }
}
contract Contract {
    bool boolValue;
    bool booleanValue;
    bool public boolVariable;
    bool public boolVariable2;
    bool public finalBoolVariable;
    bool public constant finalBoolVariable2;
    bool internal boolVariable3;
    bool internal boolVariable4;
    bool internal finalBoolVariable3;
    bool internal finalBoolVariable4;
    bool internal finalBoolVariable5;
    uint256 _ = uint256(boolValue);
    uint256 _ = uint256(booleanValue);
    uint256 _ = uint256(boolVariable);
    uint256 _ = uint256(boolVariable2);
    uint256 _ = uint256(finalBoolVariable);
    uint256 _ = uint256(finalBoolVariable2);
    uint256 _ = uint256(variable);
}
