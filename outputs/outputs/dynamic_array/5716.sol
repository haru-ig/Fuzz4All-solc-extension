pragma solidity ^0.8.0;
contract Test89 {
    struct Nested {
        int a;
    }

    struct StructInStruct {
        int a;
        Nested b;
    }

    struct StructInInt {
        int a;
    }

    struct StructInArray {
        int[3] a;

        StructInStruct[] c;
    }

    function a(StructInStruct[] x) pure public returns (int sum, bool b) {
        sum = int(0);
        bool c = bool(0);
        for(int i = 0; i < x.length; i++) {
            StructInStruct xItem = x[i];
            if (int(xItem.a) > maxInt || sum + int(xItem.a) > maxInt) {
                b = bool(1);
            } else {
                sum += int(xItem.a);
                c = bool(1);
            }
        }
        return (sum, c);
    }

    function a(StructInInt[] x) pure public returns (int sum1, int sum2) {
        sum1 = int(0);
        sum2 = int(0);
        for(int i = 0; i < x.length; i++) {
            sum1 += int(x[i].a);
        }
        return (sum1, sum2);
    }

    function a(StructInArray[] x) pure public returns (int sum3, int sum4) {
        sum3 = int(0);
        sum4 = int(0);
        for(int i = 0; i < x.length; i++) {
            StructInArray xItem = x[i];
            if (int(xItem.a) > maxInt || int(xItem.c.length) > maxInt) {
                sum4 += int(xItem.a);
                sum3 += int(xItem.c.length);
            }
        }
        return (sum3, sum4);
    }

    function a(StructInStruct[] x, StructInInt[] y) pure public returns (int sum5) {
        sum5 = int(0);
        for(int i = 0; i < x.length; i++) {
            StructInStruct xItem = x[i];
            if (int(xItem.a) > maxInt) {
                sum5 += int(xItem.a);
            }
        }
        return sum5;
    }

    function a(StructInStruct[] x, StructInStruct[] y) pure public returns (int sum6) {
        sum6 = int(0);
        for(int i = 0; i < x.length; i++) {
            StructInStruct xItem = x[i];
            foreach (StructInStruct yItem in y) {
                if (int(xItem.a) > maxInt) {
