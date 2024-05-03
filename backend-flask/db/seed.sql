
INSERT INTO public.users (display_name, handle, cognito_user_id)
VALUES
  ('Nitin Gouda', 'nitingouda' ,'MOCK'),
  ('Sahil Jadhav', 'jadhav' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'nitingouda' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )