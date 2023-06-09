import { render, screen, queryByText } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = queryByText(screen.getByRole('link'), /learn react/i);
  console.log(screen.container);
  expect(linkElement).toBeInTheDocument();
});
