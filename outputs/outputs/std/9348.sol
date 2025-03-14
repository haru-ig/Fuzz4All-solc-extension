pragma solidity ^0.8.0;
contract Test
{

    function publicPrivateTest()
        public
        view
    {
        New contract = new New (1);

        require(contract.publicModifier() == 1);

        require(contract.privateModifier() == 1);
    }
}
