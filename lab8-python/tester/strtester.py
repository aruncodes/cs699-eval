import sys
from strings import *

qn = sys.argv[1]

inputstring1 = 'what do you do?'
inputstring2 = 'clean it up please'

if qn == '1':
    inputstring1 = 'what do you do?'
    inputstring2 = 'clean it up please'
    locate11 = 'do'
    res11 = 5
    locate12 = 'xyz'
    res12 = -1
    locate21 = ' it u'
    res21 = 5
    locate22 = 'xyz'
    res22 = -1
    
    obt = locate(locate11, inputstring1)
    if obt != res11:
        print("testcase 1 ------------------------------------------------------------------------------failed")
        print("input: '"+str(locate11)+"', '"+str(inputstring1)+"'")
        print("expected output: '"+str(res11)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 1 ------------------------------------------------------------------------------passed")
    
    obt = locate(locate12, inputstring1)
    if obt != res12:
        print("testcase 2 ------------------------------------------------------------------------------failed")
        print("input: '"+str(locate12)+"', '"+str(inputstring1)+"'")
        print("expected output: '"+str(res12)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 2 ------------------------------------------------------------------------------passed")

    obt = locate(locate21, inputstring2)
    if obt != res21:
        print("testcase 3 ------------------------------------------------------------------------------failed")
        print("input: '"+str(locate21)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res21)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 3 ------------------------------------------------------------------------------passed")

    obt = locate(locate22, inputstring2)
    if obt != res22:
        print("testcase 4 ------------------------------------------------------------------------------failed")
        print("input: '"+str(locate22)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res22)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 4 ------------------------------------------------------------------------------passed")

elif qn == '2':
    inputstring1 = 'what do you do?'
    inputstring2 = 'clean it up please'
    count11 = 'do'
    res11 = 2
    count12 = 'xyz'
    res12 = 0
    count21 = 'a'
    res21 = 2
    count22 = 'c'
    res22 = 1

    obt = count(count11, inputstring1)
    if obt != res11:
        print("testcase 1 ------------------------------------------------------------------------------failed")
        print("input: '"+str(count11)+"', '"+str(inputstring1)+"'")
        print("expected output: "+str(res11)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 1 ------------------------------------------------------------------------------passed")

    obt = count(count12, inputstring1)
    if obt != res12:
        print("testcase 2 ------------------------------------------------------------------------------failed")
        print("input: '"+str(count12)+"', '"+str(inputstring1)+"'")
        print("expected output: '"+str(res12)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 2 ------------------------------------------------------------------------------passed")

    obt = count(count21, inputstring2)
    if obt != res21:
        print("testcase 3 ------------------------------------------------------------------------------failed")
        print("input: '"+str(count21)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res21)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 3 ------------------------------------------------------------------------------passed")

    obt = count(count22, inputstring2)
    if obt != res22:
        print("testcase 4 ------------------------------------------------------------------------------failed")
        print("input: '"+str(count22)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res22)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 4 ------------------------------------------------------------------------------passed")

elif qn == '3':
    inputstring1 = 'what do you do?'
    inputstring2 = 'clean it up please'
    remove11 = 'do'
    res11 = 'what  you do?'
    remove12 = 'xyz'
    res12 = 'what do you do?'
    remove21 = 'a'
    res21 = 'clen it up please'
    remove22 = 'c'
    res22 = 'lean it up please'

    obt = remove(remove11, inputstring1)
    if obt != res11:
        print("testcase 1 ------------------------------------------------------------------------------failed")
        print("input: '"+str(remove11)+"', '"+str(inputstring1)+"'")
        print("expected output: "+str(res11)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 1 ------------------------------------------------------------------------------passed")

    obt = remove(remove12, inputstring1)
    if obt != res12:
        print("testcase 2 ------------------------------------------------------------------------------failed")
        print("input: '"+str(remove12)+"', '"+str(inputstring1)+"'")
        print("expected output: '"+str(res12)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 2 ------------------------------------------------------------------------------passed")

    obt = remove(remove21, inputstring2)
    if obt != res21:
        print("testcase 3 ------------------------------------------------------------------------------failed")
        print("input: '"+str(remove21)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res21)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 3 ------------------------------------------------------------------------------passed")

    obt = remove(remove22, inputstring2)
    if obt != res22:
        print("testcase 4 ------------------------------------------------------------------------------failed")
        print("input: '"+str(remove22)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res22)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 4 ------------------------------------------------------------------------------passed")

elif qn == '4':
    inputstring1 = 'what do you do?'
    inputstring2 = 'clean it up please'
    replace11s = 'do'
    replace11d = 'can'
    res11 = 'what can you do?'
    replace12s = 'xyz'
    replace12d = 'can'
    res12 = 'what do you do?'
    replace21s = 'a'
    replace21d = 'a'
    res21 = 'clean it up please'
    replace22s = 'c'
    replace22d = 'c'
    res22 = 'clean it up please'

    obt = replace(replace11s, replace11d, inputstring1)
    if obt != res11:
        print("testcase 1 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replace11s)+"', '"+str(replace11d)+"', '"+str(inputstring1)+"'")
        print("expected output: "+str(res11)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 1 ------------------------------------------------------------------------------passed")

    obt = replace(replace12s, replace12d, inputstring1)
    if obt != res12:
        print("testcase 2 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replace12s)+"', '"+str(replace12d)+"', '"+str(inputstring1)+"'")
        print("expected output: '"+str(res12)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 2 ------------------------------------------------------------------------------passed")

    obt = replace(replace21s, replace21d, inputstring2)
    if obt != res21:
        print("testcase 3 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replace21s)+"', '"+str(replace21d)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res21)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 3 ------------------------------------------------------------------------------passed")

    obt = replace(replace22s, replace22d, inputstring2)
    if obt != res22:
        print("testcase 4 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replace22s)+"', '"+str(replace22d)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res22)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 4 ------------------------------------------------------------------------------passed")

elif qn == '5':
    inputstring1 = 'what do you do?'
    inputstring2 = 'clean it up please'
    removeall11 = 'do'
    res11 = 'what  you ?'
    removeall12 = 'xyz'
    res12 = 'what do you do?'
    removeall21 = 'a'
    res21 = 'clen it up plese'
    removeall22 = 'c'
    res22 = 'lean it up please'

    obt = removeAll(removeall11, inputstring1)
    if obt != res11:
        print("testcase 1 ------------------------------------------------------------------------------failed")
        print("input: '"+str(removeall11)+"', '"+str(inputstring1)+"'")
        print("expected output: "+str(res11)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 1 ------------------------------------------------------------------------------passed")

    obt = removeAll(removeall12, inputstring1)
    if obt != res12:
        print("testcase 2 ------------------------------------------------------------------------------failed")
        print("input: '"+str(removeall12)+"', '"+str(inputstring1)+"'")
        print("expected output: '"+str(res12)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 2 ------------------------------------------------------------------------------passed")

    obt = removeAll(removeall21, inputstring2)
    if obt != res21:
        print("testcase 3 ------------------------------------------------------------------------------failed")
        print("input: '"+str(removeall21)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res21)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 3 ------------------------------------------------------------------------------passed")

    obt = removeAll(removeall22, inputstring2)
    if obt != res22:
        print("testcase 4 ------------------------------------------------------------------------------failed")
        print("input: '"+str(removeall22)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res22)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 4 ------------------------------------------------------------------------------passed")

elif qn == '6':
    inputstring1 = 'what do you do?'
    inputstring2 = 'clean it up please'
    replaceall11s = 'do'
    replaceall11d = 'can'
    res11 = 'what can you can?'
    replaceall12s = 'xyz'
    replaceall12d = 'can'
    res12 = 'what do you do?'
    replaceall21s = 'a'
    replaceall21d = 'a'
    res21 = 'clean it up please'
    replaceall22s = 'c'
    replaceall22d = 'c'
    res22 = 'clean it up please'

    obt = replaceAll(replaceall11s, replaceall11d, inputstring1)
    if obt != res11:
        print("testcase 1 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replaceall11s)+"', '"+str(replaceall11d)+"', '"+str(inputstring1)+"'")
        print("expected output: "+str(res11)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 1 ------------------------------------------------------------------------------passed")

    obt = replaceAll(replaceall12s, replaceall12d, inputstring1)
    if obt != res12:
        print("testcase 2 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replaceall12s)+"', '"+str(replaceall12d)+"', '"+str(inputstring1)+"'")
        print("expected output: '"+str(res12)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 2 ------------------------------------------------------------------------------passed")

    obt = replaceAll(replaceall21s, replaceall21d, inputstring2)
    if obt != res21:
        print("testcase 3 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replaceall21s)+"', '"+str(replaceall21d)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res21)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 3 ------------------------------------------------------------------------------passed")

    obt = replaceAll(replaceall22s, replaceall22d, inputstring2)
    if obt != res22:
        print("testcase 4 ------------------------------------------------------------------------------failed")
        print("input: '"+str(replaceall22s)+"', '"+str(replaceall22d)+"', '"+str(inputstring2)+"'")
        print("expected output: '"+str(res22)+"'")
        print("obtained output: '"+str(obt)+"'\n")
    else:
        print("testcase 4 ------------------------------------------------------------------------------passed")
