pragma solidity ^0.8.0;
contract MutatedDynamicArrays13 {
    struct Element {
        uint256 value;
    }
    struct ElementStruct {
        Element[] elements;
    }
    Element[] newElements;
    ElementStruct structElement;
    constructor() public {
        newElements = new Element[](6);
        newElements[0] = Element({ value : 100 });
        newElements[1] = Element({ value : 150 });
        newElements[2] = Element({ value : 200 });
        newElements[3] = Element({ value : 250 });
        newElements[4] = Element({ value : 300 });
        newElements[5] = Element({ value : 350 });

        structElement.elements.push(newElements[1]);
        structElement.elements.push(newElements[2]);
        structElement.elements.push(newElements[3]);
        structElement.elements.push(newElements[4]);
        structElement.elements.push(newElements[5]);
    }
    function use() public {
        delete structElement.elements[0];
        delete structElement.elements[1];
        structElement.elements.push(Element({ value : 400 }));
        structElement.elements.push(Element({ value : 350 }));
        structElement.elements.push(Element({ value : 400 }));
        structElement.elements.push(Element({ value : 450 }));
        structElement.elements.push(Element({ value : 500 }));
    }
}
