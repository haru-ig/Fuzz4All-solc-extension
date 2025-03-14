pragma solidity ^0.8.0;
contract MutatedAddresses
{
    function main() public
    {
        MutatedAddresses memory ma;
        ma.arrAddress1.push(0xdc123);
        ma.arrAddress2.push(0xf2345);
        ma.boolArr[0] = true;
        ma.arr1[0][0] = 2247225029;
        ma.bytesArr["test"] = hex"0587567856";
        ma.bytes32Arr[0] = bytes32(keccak256("test"));
        ma.bytes_bytes[0][0] = bytes32(keccak256(hexCat(
            "0x0587567856",
            "0xf2345",
            bytes32(keccak256("test")),
            bytes32(keccak256(hexCat("0xdc123", "", "0xf2345")))))));
        ma.arr1_arr[0][0] = 1717952559;
    }
}
