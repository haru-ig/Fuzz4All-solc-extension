pragma solidity ^0.8.0;
contract ReproMutatedDynamicArrays {


    event Mutation(uint256 elementsPreviousValue);


    bool _initialized;
    function reproMutate (
        uint256[] memory previousElements,
        uint256[] memory newElements
    ) public {
        Mutation("PreviousElements");
        (bool isValid, uint256 elementAtIndex) = abi.decode(previousElements[0], (bool, uint256));
        assert(isValid);

        Mutation("NewElements");
        elements[0] = newElements[0];

        Mutation("PreviousElements+NewElements");
        elements[0] = previousElements[0] + newElements[0];
    }
}
