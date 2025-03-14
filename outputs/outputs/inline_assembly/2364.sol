pragma solidity ^0.8.0;
contract Mutators
{
    uint A;
    uint B;
    address target;
    Mutator[] private mutators;
    constructor(address _target) public
    {
        target = _target;
        emit LogCreate();
    }
    receive() external payable {}
    event LogCreate();
    function createMutator() public payable virtual returns (uint256)
    {
        Mutator mutator = new Mutator();
        mutators.push(mutator);
        emit LogCreateMutator(mutator);
        return 0;
    }
    function increaseA(uint128 x) public
    {
        Mutator mutator = mutators[0];
        mutator.increaseA.value(x)(x);
    }
    function decreaseA(uint x) public
    {
        Mutator mutator = mutators[0];
        mutator.decreaseA.value(x)(x);
    }
    function increaseB(uint x) public
    {
        mutators[1].increaseB.value(x)(x);
        Mutator mutator;
        for(uint i=0; i<2; i++)
        {
            mutator = mutators[i + 1];
        }
        mutator.increaseB.value(x)(x);
    }
    function subtractA(uint128 x) public
    {
        mutators[1].subtractA.value(x)(x);
        Mutator mutator;
        for(uint i=0; i<2; i++)
        {
            mutator = mutators[i + 1];
        }
        mutator.subtractA.value(x)(x);
    }
    function subtractB(uint x) public
    {
        mutators[1].subtractB.value(x)();
        Mutator mutator;
        for(uint i=0; i<2; i++)
        {
            mutator = mutators[i + 1];
        }
        mutator.subtractB.value(x)();
    }
    function multiplyB(uint x) public
    {
        mutators[1].multiplyB.value(x)();
        Mutator mutator;
        for(uint i=0; i<2; i++)
        {
            mutator = mutators[i + 1];
        }
        mutator.multiplyB.value(x)();
    }
}
