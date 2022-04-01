/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT 
    hdr.submission_date, 
    hdr.num_hackers, 
    h.hacker_id, 
    h.name
FROM 
    (
        SELECT 
            hdr.submission_date, 
            hdr.num_hackers, 
            MIN(hdr.hacker_id) AS hacker_id
        FROM 
            (
                SELECT 
                    hdr.submission_date, 
                    hdr.num_hackers, 
                    s.hacker_id
                FROM 
                    (
                        SELECT
                            hdr.submission_date, 
                            hdr.num_hackers, 
                            MAX(hdr.num_submissions) AS max_submissions
                        FROM 
                            (
                                SELECT
                                    hdr.submission_date, 
                                    hdr.num_hackers, 
                                    COUNT(s.hacker_id) AS num_submissions
                                FROM 
                                    (
                                        SELECT 
                                            s.submission_date, 
                                            COUNT(DISTINCT s.hacker_id) AS num_hackers
                                        FROM 
                                            Submissions s
                                        WHERE 
                                            (
                                                SELECT 
                                                    COUNT(DISTINCT submission_date) 
												FROM Submissions
												WHERE 
                                                hacker_id = s.hacker_id AND 
                                                submission_date <= s.submission_date
											) = (
													SELECT 
														COUNT(DISTINCT submission_date) 
													FROM 
														Submissions
													 WHERE 
														submission_date <= s.submission_date
												)
										GROUP BY 
											s.submission_date
									) hdr
									INNER JOIN 
										Submissions s 
											ON s.submission_date = hdr.submission_date
								GROUP BY 
									hdr.submission_date, 
									hdr.num_hackers, 
									s.hacker_id
							) hdr
						GROUP BY 
							hdr.submission_date, 
							hdr.num_hackers
					) hdr
					INNER JOIN 
						Submissions s 
							ON s.submission_date = hdr.submission_date
				GROUP BY 
					hdr.submission_date, 
					hdr.num_hackers, 
					s.hacker_id
				HAVING 
					MIN(hdr.max_submissions) = COUNT(s.hacker_id)
			) hdr
		GROUP BY 
			hdr.submission_date, 
			hdr.num_hackers
	) hdr
	INNER JOIN 
		Hackers h 
			ON h.hacker_id = hdr.hacker_id
ORDER BY 
	hdr.submission_date;