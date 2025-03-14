pragma solidity ^0.8.0;
interface I2a {
    function use() external;
}
contract C1 is I2a {

    function use() external {
        assembly {




            store(0,0x01)


            store(1,0x01)





            store(2,0x01)
            store(2,0x01)
            store(2,0x01)


            store(3,0x01)



            store(4,0x01)


            store(5,0x01)



            store(6,"6")



            let value0 := load(0)
            let value1 := load(1)
            let value2 := load(2)
            let value3 := load(3)





            let value4 := load(5)



            let value5 := calldataload(5)


            let gasLeft := calldatacooldown(5)
            let gasCost := gasleft()
