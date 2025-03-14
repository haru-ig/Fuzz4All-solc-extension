pragma solidity ^0.8.0;
interface IMutationFunctionInterface
{
    function a()
        external
        pure
        returns
        (
            uint
        );
}
contract SemanticMutation13
{
    function a(IMutationFunctionInterface immutable mutFunctionInterface)
        external
        pure
    {
    }
    function b(IMutationFunctionInterface immutable non_static_function)
        public
        pure
        returns
        (
            uint16,
            uint16
        )
    {
        return (1, 2);
    }
}
contract SemanticMutation14
{
    function a(IMutationFunctionInterface immutable _mutFunction, IMutationFunctionInterface immutable _nonStaticFunction)
        public
        pure
        returns
        (
            uint,
            uint
        )
    {
        return (1, value);
    }
}
contract SemanticMutation15
{
    function a(address _address)
        public
        pure
    {
    }
}
contract SemanticMutation16
{
    function a(address _address)
        public
        pure
        returns
        (
            uint,
            uint
        )
    {
        return (4, value);
    }
}
contract SemanticMutation17
{
    function a()
        public
        pure
        returns
        (
            uint,
            uint16
        )
    {
        return (1, value);
    }
}
contract SemanticMutation18
{
    event MyEvent(uint128);

    function a()
        public
        pure
        returns
        (
            uint,
            uint16
        )
    {
        emit MyEvent(16);
        return (1, value);
    }
}
contract SemanticMutation19
{
    uint private __value = 3;
    constructor()
    {
    }
    function setSomeVariable(uint _someVariable) public {
        __value = _someVariable;
    }
    function getSomeVariable() public view returns(uint) {
        return __value;
    }
}
contract SemanticMutation20
{
    uint private __value = 3;
    constructor(uint _someVariable)
    {
        __value = _someVariable;
    }
    function getSomeVariable() public view returns(uint) {
        return __value;
    }
}
contract SemanticMutation21
{
    uint private __value = 3;

    modifier getter {

        _
    }
    modifier setter(uint _someVariable) {
        __value = _someVariable;

    }
    constructor()
    {
        setter(42);
