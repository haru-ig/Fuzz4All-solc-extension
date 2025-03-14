pragma solidity ^0.8.0;
contract CallFallbackFunctionThreeExtraPlusFallback_0_O {
    mapping(uint256 => bytes32) private indexToContract;
    mapping(bytes32 => address) private contracts;
    bytes32[] private knownNames;

    function _updateIndexToContract(uint256 index, bytes calldata contractName) internal {
        indexToContract[index] = contractName;
    }

    receive() external payable {

        bytes memory contractToCall;


        bytes32 contractName = knownNames[uint256(indexToContract[uint256(uint256(indexToContract[uint256(index)])]) + 1)]);


        if (!contracts[contractName].isContract()) {

            knownNames.push(contractName);


            if (contractName == bytes32(uint256(2018010)))) {
                address payable contractInstance = address(uint160(0));
                contractInstance.transfer(address(this).balance);
            } else {
                abi.decode(knownNames[uint256(2018010)],(address));
            }
        }
    }
}
