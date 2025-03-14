pragma solidity ^0.8.0;
contract Semantics {
    Semantics my_instance;
    function getMyContract()
        public
    {
        Semantics.Semantics my_contract = m_instance;
        console.log(my_contract);
    }
}
