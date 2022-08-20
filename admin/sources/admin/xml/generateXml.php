<?php
function generateXml($db)
{
    $dom = new DOMDocument();
    $dom->encoding = 'utf-8';

    $dom->xmlVersion = '1.0';

    $dom->formatOutput = true;

    $xml_file_name = '../rates.xml';

    $root = $dom->createElement('rates');
    $query = $db->query("SELECT * FROM `bit_rates`");
    if ($query->num_rows > 0) {
        while ($row = $query->fetch_assoc()) {
            $from1 = $db->query("SELECT * FROM `bit_gateways` WHERE id=".$row['gateway_from']);
            $from = $from1->fetch_assoc();
            $to1 = $db->query("SELECT * FROM `bit_gateways` WHERE id=".$row['gateway_to']);
            $to = $to1->fetch_assoc();

            $movie_node = $dom->createElement('item');

            $child_node_title1 = $dom->createElement('from',  $from['name']);
            $movie_node->appendChild($child_node_title1);

            $child_node_title = $dom->createElement('to', $to['name']);
            $movie_node->appendChild($child_node_title);

            $child_node_title2 = $dom->createElement('in', $row['gateway_from']);
            $movie_node->appendChild($child_node_title2);

            $child_node_title3 = $dom->createElement('out', $row['gateway_to']);
            $movie_node->appendChild($child_node_title3);

            $child_node_title4 = $dom->createElement('amount', '572962.42');
            $movie_node->appendChild($child_node_title4);

            $child_node_title5 = $dom->createElement('minamount', '3');
            $movie_node->appendChild($child_node_title5);

            $child_node_title6 = $dom->createElement('maxamount', '1000');
            $movie_node->appendChild($child_node_title6);


            $root->appendChild($movie_node);

        }
    }

    $dom->appendChild($root);

    $dom->save($xml_file_name);

}
