<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/Services">
        <html>
            <head>
                <title>Service List</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 10px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Service List</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Service ID</th>
                            <th>Type</th>
                            <th>Provider Name</th>
                            <th>Contact Number</th>
                            <th>Address</th>
                            <th>Location</th>
                            <th>Coordinates</th>
                            <th>Duration</th>
                            <th>Price</th>
                            <th>Category</th>
                            <th>Rating</th>
                            <th>Status</th>
                            <th>Availability Slots</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="Service">
                            <tr>
                                <td><xsl:value-of select="ServiceID"/></td>
                                <td><xsl:value-of select="Type"/></td>
                                <td><xsl:value-of select="Provider/Name"/></td>
                                <td><xsl:value-of select="Provider/ContactNumber"/></td>
                                <td><xsl:value-of select="Provider/Address"/></td>
                                <td><xsl:value-of select="Location/Name"/></td>
                                <td><xsl:value-of select="Location/Coordinates"/></td>
                                <td><xsl:value-of select="ServiceDetails/Duration"/></td>
                                <td><xsl:value-of select="ServiceDetails/Price"/></td>
                                <td><xsl:value-of select="ServiceDetails/Category"/></td>
                                <td><xsl:value-of select="ServiceDetails/Rating"/></td>
                                <td><xsl:value-of select="Availability/Status"/></td>
                                <td>
                                    <xsl:for-each select="Availability/Slots/Slot">
                                        <xsl:value-of select="StartTime"/> - <xsl:value-of select="EndTime"/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
