pragma solidity ^0.8.0;
contract Contract1{

    uint private constant N = 2;

    function public_view() public view returns (uint) {return N;};
}
contract Contract2{

    uint private constant N = 2;

    function public_view() public view returns (uint){
        return N;
    }
}
contract MTest {
    bool _ok;

    contract MTestImpl {

    }


    function foo() public view returns (uint){




        @IFactory private factory;





        @address private contractAddress;


        function bar() public view returns (uint){






            @IFactory(contractAddress) private factory2;





            @IFactory(contractAddress) private factory3;






            _ok |= abi.encode(factory, factory2).length == 56;



            @IFactory private factory4;






            _ok |= abi.encode(contractAddress,_ok && factory2).length == 144;
