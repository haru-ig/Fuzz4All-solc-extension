pragma solidity ^0.8.0;
contract L25 {
    struct TestStruct {
        uint8 a;
        uint8 b;
        uint256 c;
        uint8 d;
    }

    modifier modifyCalled() {

        assembly {
            c := mstore(0xb0b0b0b0)
            a := mload(0x01)
            b := mload(0x20)
        }


        expect(
            mload(0x01) == 8,
            "Fail 1"
        );


        expect(mload(0xb0b0b0b0)!= 0, "Fail 2");


        modifier verifyModifiedCalled {

            if (c()!= b && c()!= a) {

                return;
            }


            _;
        }



        L25 child = L25(msg.sender);
        child.modifyCalled();


        if (mload(0x20)!= 8) {

            uint8 a2;

            assembly {
                a2 := mload(0x20)
            }

            expect(a2, "Fail 4");
        }


        if (!verifyOriginModifiedCalled()) {
            revert();
        }


        revert();
    }

}
