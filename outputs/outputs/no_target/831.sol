pragma solidity ^0.8.0;
contract SemanticChecked {
    function get(address _storage)
        public
        view
        returns (bool x)
    {
        return true;
    }
    function not_a_bool(bytes32 _x)
        public
        view
        returns (int128 x)
    {
        return 0x000000600000010000000000000000000000000000000000000000000000000;
    }
    function not_a_number(bytes32 _x)
        public
        view
        returns (contract_I)
    {

        return (contract_I(0xffffffffffffffffffffffffffffffff000000000000000000));
    }
    function not_a_contract(bytes32 _x)
        public
        view
        returns ('')
    {
        return '';
    }
    function not_the_same_contract(address _x, address _y)
        public
        view
        returns (contract_I)
    {
        return (contract_I(_x));
    }
}
