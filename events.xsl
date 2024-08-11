<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Event Management System - EUPHORIA</title>
                <style>
                    .table-hover tbody tr:hover {
                        background-color: #f1f1f1;
                    }
                    .table thead th {
                        background-image: linear-gradient(to right, #28a745, #218838);
                        color: white;
                    }
                    .table-bordered {
                        border: 1px solid #dee2e6;
                    }
                </style>
            </head>
            <body class="bg-light py-5">
                <div class="container">
                    <h2 class="text-center mb-4">Upcoming Events</h2>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover shadow-sm">
                            <thead>
                                <tr>
                                    <th>Event Name</th>
                                    <th>Date</th>
                                    <th>Venue</th>
                                    <th>Ticket Price (USD)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="//event">
                                    <tr>
                                        <td><xsl:value-of select="name"/></td>
                                        <td><xsl:value-of select="date"/></td>
                                        <td><xsl:value-of select="venue"/></td>
                                        <td><xsl:value-of select="price"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
