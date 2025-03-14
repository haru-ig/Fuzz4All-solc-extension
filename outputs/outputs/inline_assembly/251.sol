pragma solidity ^0.8.0;
contract E6
{
    function myfunction(){
        E5 _E5 = E5(address(this));
        uint _subtract;
        assembly
        {

            _subtract := E5.subtract(_E5)
        }
        assert(_subtract == 4);
    }
}
