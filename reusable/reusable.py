from xml.dom import minidom
from pathlib import Path


def readXML(your_test_param):
    first_parse_xml = minidom.parse(str(Path(__file__).parent.parent) + '/readData.xml')
    data = first_parse_xml.getElementsByTagName(your_test_param)[0]
    return data.firstChild.data