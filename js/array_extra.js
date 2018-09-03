function concat(a, b) {
    return a.reduceRight(function (coll, item) {
        coll.unshift(item);
        return coll;
    }, b);
}

function groupsOf(arr, size) {
    var arrMulti = [];
    var groups = Math.ceil(arr.length/size);
    var lowerLimit = 0;

    for (var i= 0; i < groups; i++) {
        lowerLimit = i*size;
        arrMulti.push(arr.slice(lowerLimit,lowerLimit+size));
    }

    return arrMulti;
}