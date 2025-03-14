pragma solidity ^0.8.0;
pragma solidity ^0.5.14;

contract Semantic0032 {



    event TypeEvent(uint256 _type);

    function log0(uint256 _type, ) external {
        TypeEvent(_type);
        return;
    }
}
pragma solidity ^0.8.0;
pragma solidity ^0.5.14;

contract Semantic0033 {


    function exception(uint256 _type) external pure {

        error _test;
        _test;
        throw _type();
    }
}
pragma solidity ^0.8.0;
pragma solidity ^0.5.14;

contract Semantic0034 {

    event Default01(uint256 _type, uint256 _value);




    function defaultLogV2(uint256 _type)
        external
        defaultLogV2(uint256 _type, uint256 _value)
    {
        return;
    }




    function defaultLogV2(uint256 _type, uint256 _value)
        external
        defaultLogV2(_type, _value, 0)
    {
        return;
    }


    function defaultLogV2Extra(uint256 _type, uint256 _value, uint256 _extra)
        external
        defaultLogV2(_type, _value)
    {
        return;
    }




    function exceptionExtra(uint256 _type, uint256 _value)
        external
        exceptionExtra(_type, _value, 0)
    {
        return;
    }
