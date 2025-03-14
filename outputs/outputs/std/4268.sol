pragma solidity ^0.8.0;
contract ArrayAddress {
    IArray public array = new Array();
    IArray public clone = new Array();

    function testAddress(uint256 len) external {
        for (uint256 idx = 1; idx < len+1; idx++) {
            array.push(uint160(address(this)));
            array.push(bytes32(address(this)));
            array.push(address(this));
            array.push(uint256(0x5e1f46b97cb276e60782abae131e584b84f83de9));
            array.push(bytes32(uint8(1)));
            array.push(bytes32(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffe43b3bd16a795179529b8c28939a2ca71a946690e9e958a8070918a788874a795e69ad6e94c819291ebfc9752b3847ad2a5563c885e98c92eb2620a55d04f46465f4646e394b4b2f2e6c68787378763b715979726641f2f0e3e3e7e537959595746f94f1b2e330157465c61a84a835db76c7af4584131232e58058035c823c4a14df0176ae09103c7983905e0e0e0e0e0e81903c7983905e0e0e0e0e0e81903c7983905e0e0e0e0e0e81903c7983905e0e0e0e0e0e81903c7
